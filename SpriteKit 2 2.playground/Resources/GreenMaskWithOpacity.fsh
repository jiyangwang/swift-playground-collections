
void main() {
    const vec2 droplet = vec2(160.0,128.0);

    // Find the pixel at the coordinate of the actual texture
    vec4 val = texture2D(u_texture, v_tex_coord);

    
    if (0.4 < v_tex_coord.x && 0.6 > v_tex_coord.x){
        gl_FragColor = vec4(1.0,1.0,1.0,1.0);
    } else {
        gl_FragColor = vec4(0.0,0.0,0.0,0.0);
    }
}