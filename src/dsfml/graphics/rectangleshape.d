/*
DSFML - The Simple and Fast Multimedia Library for D

Copyright (c) <2013> <Jeremy DeHaan>

This software is provided 'as-is', without any express or implied warranty.
In no event will the authors be held liable for any damages arising from the use of this software.

Permission is granted to anyone to use this software for any purpose, including commercial applications,
and to alter it and redistribute it freely, subject to the following restrictions:

1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software.
If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.

2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.

3. This notice may not be removed or altered from any source distribution


***All code is based on code written by Laurent Gomila***


External Libraries Used:

SFML - The Simple and Fast Multimedia Library
Copyright (C) 2007-2013 Laurent Gomila (laurent.gom@gmail.com)

All Libraries used by SFML - For a full list see http://www.sfml-dev.org/license.php
*/

module dsfml.graphics.rectangleshape;

import dsfml.graphics.shape;
import dsfml.system.vector2;

class RectangleShape:Shape
{
	private Vector2f m_size;

	this(Vector2f theSize = Vector2f(0,0))
	{
		size = theSize;
	}

	@property
	{
		override uint pointCount()
		{
			return 4;
		}
	}

	override Vector2f getPoint(uint index) const
	{
		switch (index)
		{
			default:
			case 0: return Vector2f(0, 0);
			case 1: return Vector2f(m_size.x, 0);
			case 2: return Vector2f(m_size.x, m_size.y);
			case 3: return Vector2f(0, m_size.y);
		}
	}

	@property
	{
		void size(Vector2f theSize)
		{
			m_size = theSize;
			update();
		}
		Vector2f size()
		{
			return m_size;
		}
	}
}

