out vec4 color;

uniform vec2 resolution;
uniform float time;
vec2 fragCoord = gl_FragCoord.xy;

void main(){
    vec2 uv = fragCoord / resolution.xy;

    vec3 col = 0.5 + 0.5 * cos(time + uv.xyx + vec3(0, 2, 4));

    color = vec4(col, 1.0);
}