#version 100
#extension GL_EXT_draw_buffers: enable
precision highp float;
precision highp int;

uniform sampler2D u_colmap;
uniform sampler2D u_normap;

varying vec3 v_position;
varying vec3 v_normal;
varying vec2 v_uv;

#define NUM_GBUFFERS 4

void main() {
    // TODO: copy values into gl_FragData[0], [1], etc.
    gl_FragData[0] = vec4(v_position,1.0);
    gl_FragData[1] = vec4(v_normal,1.0);
    gl_FragData[2] = vec4(v_uv,1.0,1.0);
    //gl_FragData[3] = gl_Position;
}
