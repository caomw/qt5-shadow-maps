#version 330

in vec3 vertices;
in vec3 normals;
in vec3 colors;

uniform mat4 mvpMat;
uniform vec3 lightPosition;

out vec3 vertexWorldspace;
out vec3 normalWorldspace;
out vec3 lightWorldspace;
out vec3 vertexColor;
out vec4 vertexScreenspace;

void main(void) {
    gl_Position = mvpMat * vec4(vertices, 1.0);
    vertexWorldspace = vertices;
    normalWorldspace = normals;
    lightWorldspace = lightPosition;
    vertexColor = colors;
    vertexScreenspace = gl_Position;
}                                                                                                                                                                                                                                                                                                                                     
