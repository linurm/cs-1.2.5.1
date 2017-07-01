//
//  Shader.fsh
//  opengl
//
//  Created by Mike Austin on 10/29/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
	gl_FragColor = colorVarying;
}
