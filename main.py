import glfw
from OpenGL.GL import *

def main():
    if not glfw.init():
        return
    
    window = glfw.create_window(640, 480, "OpenGL Lab", None, None)
    if not window:
        glfw.terminate()
        return

    glfw.make_context_current(window)

    while not glfw.window_should_close(window):
        glBegin(GL_TRIANGLES)
        glVertex2f(0, 1)
        glVertex2f(1, -1)
        glVertex2f(-1, -1)
        glEnd()

        glfw.swap_buffers(window)
        glfw.poll_events()

    glfw.terminate()


if __name__ == "__main__":
    main()