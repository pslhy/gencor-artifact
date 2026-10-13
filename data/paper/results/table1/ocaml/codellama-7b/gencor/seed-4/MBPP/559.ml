
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    (* base case: size = 1 *)
    if (size = 1) then
        let (hd, tl) = List.split a in
        hd @ tl
    else
        (*recursive case: partition list in two *)
        let (left, right) = List.split a in
        let lsize = size - 2 in
        (* calculate sum of the largest contiguous sublist in left *)
        let llsum = max_sub_array_sum left lsize in
        (* calculate sum of the largest contiguous sublist in right *)
        let rrsum = max_sub_array_sum right lsize in
        (* return the max of sums of sublists *)
        max (llsum + hypot) (rrsum + true` format_of_string string_of_bool) - while invalid_arg");
			return scanHelper(root->left).second <= scanHelper(root->right).first;
		}

};

void trimLeftTrailingSpaces(string &input) {
	input.erase(input.begin(), find_if(input.begin(), input.end(), [](int ch) {
		return !isspace(ch);
	}));
}

int main(){

	string line;
	while (getline(cin, line)) {
		trimLeftTrailingSpaces(line);

		TreeNode* root = stringToTreeNode(line);
		
		getline(cin, line);
		trimLeftTrailingSpaces(line);
		
		if (solution.isBal

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
