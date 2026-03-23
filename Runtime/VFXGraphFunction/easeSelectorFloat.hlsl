
float easeInSine(in float Input){
	return 1 - cos((Input *  PI) / 2);
}

float easeOutSine(in float Input){
	return sin((Input *  PI) / 2);
}

float easeInOutSine(in float Input){
	return -(cos(PI * Input) - 1) / 2;
}

float easeInQuad(in float Input){
	return Input * Input;
}

float easeOutQuad(in float Input){
	return 1 - (1 - Input) * (1 - Input);
}

float easeInOutQuad(in float Input){
	return Input < 0.5 ? 2 * Input * Input : 1 -  pow(-2 * Input + 2, 2) / 2;
}

float easeInCubic(in float Input){
	return Input * Input * Input;
}

float easeOutCubic(in float Input){
	return 1 - pow(1 - Input, 3);
}

float easeInOutCubic(in float Input){
	return Input < 0.5 ? 4 * Input * Input * Input : 1 - pow(-2 * Input + 2, 3) / 2;
}

float easeInQuart(in float Input){
	return Input * Input * Input * Input;
}

float easeOutQuart(in float Input){
	return 1 - pow(1 - Input, 4);
}

float easeInOutQuart(in float Input){
	return Input < 0.5 ? 8 * Input * Input * Input * Input : 1 - pow(-2 * Input + 2, 4) / 2;
}

float easeInQuint(in float Input){
	return Input * Input * Input * Input * Input;
}

float easeOutQuint(in float Input){
	return 1 - pow(1 - Input, 5);
}

float easeInOutQuint(in float Input){
	return Input < 0.5 ? 16 * Input * Input * Input * Input * Input : 1 - pow(-2 * Input + 2, 5) / 2;
}

float easeInExpo(in float Input){
	return Input == 0 ? 0 : pow(2, 10 * Input - 10);
}

float easeOutExpo(in float Input){
	return Input == 1 ? 1 : 1 - pow(2, -10 * Input);
}

float easeInOutExpo(in float Input){
	return Input == 0
  		? 0
  		: Input == 1
  		? 1
  		: Input < 0.5 ? pow(2, 20 * Input - 10) / 2
  		: (2 - pow(2, -20 * Input + 10)) / 2;
}

float easeInCirc(in float Input){
	return 1 - sqrt(1 - pow(Input, 2));
}

float easeOutCirc(in float Input){
	return sqrt(1 - pow(Input - 1, 2));
}

float easeInOutCirc(in float Input){
	return Input < 0.5
  		? (1 - sqrt(1 - pow(2 * Input, 2))) / 2
  		: (sqrt(1 - pow(-2 * Input + 2, 2)) + 1) / 2;

}

float easeInBack(in float Input)
{
	float constantOne = 1.70158;
	float constantTwo = constantOne + 1;

	return constantTwo * Input * Input * Input - constantOne * Input * Input;
}

float easeOutBack(in float Input)
{
	float Constant1 = 1.70158;
	float Constant2 = Constant1 + 1;

	return 1 + Constant2 *  pow(Input - 1, 3) + Constant1 *  pow(Input - 1, 2);
}

float easeInOutBack(in float Input)
{
	float Constant1 = 1.70158;
	float Constant2 = Constant1 * 1.525;

	return Input < 0.5
  		? (pow(2 * Input, 2) * ((Constant2 + 1) * 2 * Input - Constant2)) / 2
  		: (pow(2 * Input - 2, 2) * ((Constant2 + 1) * (Input * 2 - 2) + Constant2) + 2) / 2;
}

float easeInElastic(in float Input){
    float constantFloat = (2 * PI) / 3;

	return Input == 0
  		? 0
  		: Input == 1
  		? 1
  		: -pow(2, 10 * Input - 10) * sin((Input * 10 - 10.75) * constantFloat);

}

float easeOutElastic(in float Input){
	float constantFloat = (2 * PI) / 3;

	return Input == 0
  		? 0
  		: Input == 1
  		? 1
  		:  pow(2, -10 * Input) * sin((Input * 10 - 0.75) * constantFloat) + 1;

}

float easeInOutElastic(in float Input){
	float constantFloat = (2 * PI) / 4.5;

	return Input == 0
 		? 0
 		: Input == 1
		? 1
  		: Input < 0.5
  		? -(pow(2, 20 * Input - 10) * sin((20 * Input - 11.125) * constantFloat)) / 2
  		: (pow(2, -20 * Input + 10) * sin((20 * Input - 11.125) * constantFloat)) / 2 + 1;

}

float easeOutBounce(in float Input){
	float constantOne = 7.5625;
	float constantTwo = 2.75;

	if (Input < 1 / constantTwo) {
    		return constantOne * Input * Input;
	} else if (Input < 2 / constantTwo) {
    		return constantOne * (Input -= 1.5 / constantTwo) * Input + 0.75;
	} else if (Input < 2.5 / constantTwo) {
    		return constantOne * (Input -= 2.25 / constantTwo) * Input + 0.9375;
	} else {
   		 return constantOne * (Input -= 2.625 / constantTwo) * Input + 0.984375;
	}
}

float easeInBounce(in float Input){
   	return 1 - (easeOutBounce(1 - Input));
}

float easeInOutBounce(in float Input){
	return Input < 0.5
  		? (1 - easeOutBounce(1 - 2 * Input)) / 2
  		: (1 + easeOutBounce(2 * Input - 1)) / 2;
}