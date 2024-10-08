out vec4 color;

uniform vec2 resolution;
uniform float time;
vec2 fragCoord = gl_FragCoord.xy;

void main(){
    vec2 uv = fragCoord / resolution.xy * 2 - 1;

    float siri = abs(sin(time - uv.y)) / abs(uv.y) * 0.05;

    vec3 col = siri * mix(vec3(0.2, 0.7, 0.4), vec3(0.1, 0.4, 0.9), abs(uv.x));

    color = vec4(col, 1);
    // color = vec4(0, abs(sin(time + uv.y * 5)), 0, 1);
}