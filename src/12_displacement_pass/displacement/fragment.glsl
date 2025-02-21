// already defined with ShaderMaterial
// precision mediump float;

// we did receive this from vertex shader, because we did send it (not done by ShaderMaterial)
varying vec2 vUv;

// this is uniform we mentioned (mandatory (explained why))
uniform sampler2D tDiffuse;

uniform float uTime;


void main() {

  
  // this is mandatory (consider this hello world fragment shader
  //  code for passes)
  // ------------------------------------------------------------
  // vec2 newUv = vUv;
  // vec4 color = texture2D(tDiffuse, newUv);
  // gl_FragColor = color;
  // ------------------------------------------------------------ 
  vec2 newUv = vec2(vUv.x, vUv.y + sin(vUv.x * 10.0 + uTime) * 0.1);

  // newUv.y += 0.5;


  vec4 color = texture2D(tDiffuse, newUv);
  gl_FragColor = color;
  // ------------------------------------------------------------

  // gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
}