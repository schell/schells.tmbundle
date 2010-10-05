#include <cstdlib>
#include <cstdio>
#include <iostream>
#include <GLUT/glut.h>

#include "glpng/glpng.h"

using namespace std;

/**
 *	Application entry point for ${TM_NEW_FILE_BASENAME}.
 *
 *	author ${TM_FULLNAME}
 *	since ${TM_DATE}
 */

//--------------------------------------
//  OpenGL state functions
//--------------------------------------

void display(void)
{	
	// clear the window
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
	// move rear buffer to visible
	glutSwapBuffers();
}

void reshape(int width, int height)
{
	glViewport(0, 0, width, height);
    
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(0, width, height, 0);
    glMatrixMode(GL_MODELVIEW);
}

void idle(void)
{
    glutPostRedisplay();
}

//--------------------------------------
//  MAIN
//--------------------------------------

int main(int argc, char** argv)
{
	glutInit(&argc, argv);
    
    glutInitDisplayMode(GLUT_RGBA | GLUT_DOUBLE | GLUT_DEPTH);
    glutInitWindowSize(640, 480);
    
    glutCreateWindow("${TM_NEW_FILE_BASENAME}");
    
    glutDisplayFunc(display);
    glutReshapeFunc(reshape);
    glutIdleFunc(idle);
    
    glutMainLoop();
    return EXIT_SUCCESS;
}