vec4 rainbowTrail(vec2 p, float iGlobalTime)
{

    float rainbowBand = p.y + sin(p.y+iGlobalTime*12+p.x*12)*0.05;
    
    //
    if (rainbowBand >= 0.125 && rainbowBand < 0.250){
        return vec4(255,43,14,255)/255.0;
    }

    //
    if (rainbowBand >= 0.250 && rainbowBand < 0.375){
        return vec4(255,168,6,255)/255.0;
    }

    //
    if (rainbowBand >= 0.375 && rainbowBand < 0.5){
        return vec4(255,244,0,255)/255.0;
    }
    
    //
    if (rainbowBand >= 0.5 && rainbowBand < 0.625){
        return vec4(51,234,5,255)/255.0;
    }

    //
    if (rainbowBand >= 0.625 && rainbowBand < 0.75){
        return vec4(8,163,255,255)/255.0;
    }

    if (rainbowBand >= 0.75 && rainbowBand < 0.875){
        return vec4(122,85,255,255)/255.0;
    }
    
    return vec4(0,0,0,0);
}

void main() {
    gl_FragColor = rainbowTrail(v_tex_coord,u_time);
}