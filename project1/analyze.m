function output=analyze(kind,truth,preds)	
% function output=analyze(kind,truth,preds)		
%
% Analyses the accuracy of a prediction
% Input:
% kind='acc' classification error
% kind='abs' absolute loss
% (other values of 'kind' will follow later)
% 

switch kind
	case 'abs'
		% compute the absolute difference between truth and predictions
		%fill in the code here
		Abs=truth-preds;
        output=sum(abs(truth-preds))/length(truth);
	case 'acc' 
		%% fill in code here
		 	acc=truth-preds;
            dim=size(acc,2);
            output=(sum(acc==0))/dim;
end;

