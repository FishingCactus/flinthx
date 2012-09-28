/*
 * FLINT PARTICLE SYSTEM
 * .....................
 * 
 * Author: Richard Lord
 * Copyright (c) Richard Lord 2008-2011
 * http://flintparticles.org/
 * 
 * Licence Agreement
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
import org.flintparticles.common.counters.Blast;
import org.flintparticles.common.displayobjects.Dot;
import org.flintparticles.common.initializers.ColorInit;
import org.flintparticles.common.initializers.SharedImage;
import org.flintparticles.twod.actions.BoundingBox;
import org.flintparticles.twod.actions.Move;
import org.flintparticles.twod.actions.MutualGravity;
import org.flintparticles.twod.actions.SpeedLimit;
import org.flintparticles.twod.emitters.Emitter2D;
import org.flintparticles.twod.initializers.Position;
import org.flintparticles.twod.zones.RectangleZone;

class MutualG extends Emitter2D
{

	public function new()
	{
		counter = new Blast(40);
		addInitializer(new SharedImage(new Dot(2)));
		addInitializer(new ColorInit(0xFFFF00FF, 0xFF00FFFF));
		addInitializer(new Position(new RectangleZone(10, 10, 380, 380)));
		addAction(new MutualGravity(10, 500, 3));
		addAction(new BoundingBox(0, 0, 400, 400));
		addAction(new SpeedLimit(150));
		addAction(new Move());
	}

}
