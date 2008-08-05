/**
Copyright (c) 2008 New Gonzo <john@newgonzo.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

package com.newgonzo.midi.messages
{
	public class VoiceMessage extends ChannelMessage
	{
		public function VoiceMessage(status:int, channel:int, data1:int = 0, data2:int = 0)
		{
			super(status, channel, data1, data2);
		}
		
		public function get octave():int
		{
			return Math.floor(data1 / 12) - 1;
		}
		
		public function get pitch():uint
		{
			return uint(data1);
		}
		
		public function get note():uint
		{
			return pitch % 12;
		}
		
		public function get velocity():uint
		{
			return uint(data2);
		}
		
		override public function toString():String
		{
			return "[VoiceMessage(status=" + MessageStatus.toString(status) + " channel=" + channel + " note=" + (NoteType.toString(note)) + " octave=" + octave + " velocity=" + velocity + ")]";
		}
	}
}
