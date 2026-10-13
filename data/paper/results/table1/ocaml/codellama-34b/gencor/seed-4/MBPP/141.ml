
let rec pancake_sort (nums : int list) : int list = 
    (* base case: ignore empty and single-element lists *)
    match nums with
    | [] | [_] -> nums
    | _ -> 
        (* get the maximum element and its index *)
        let max_index = nums |> List.mapi (fun i x -> (i, x)) |> List.fold_left (fun (i, _) (j, x) -> if x > nums.(!i) then (j, x) else (i, nums.(!i)))
        (* flip the list around the max element *)
        (*** Begin YOUR CODE ****

	let rev_left = nums |> List.take max_index |> List.rev in
	let rev_right = nums |> List.drop max_index
	in
	let left_sorted = pancake_sort rev_left in
	let right_sorted = pancake_sort rev_right in
	left_sorted @ right_sorted
	
	**** End YOUR CODE *****)

(* Demonstration of the pancake_sort function *)
(* test array with 5, 4, 3, 2, 1 *)

(**
select_all ()
val it : int list = [5; 4; 3; 2; 1] *)

(**
pancake_sort []
val it : int list = [] *)

(**
pancake_sort [5, 4, 3, 2, 1]
val it : int list = [5; 4; 3; 2; 1] *)

(**
pancake_sort [1, 5, 4, 3, 2]
val it : int list = [1; 5; 4; 3; 2] *)

(**
pancake_sort [1, 2, 3, 4, 5]
val it : int list = [1; 2; 3; 4; 5] *)

(* Demonstration of the pancake_sort function with normal list *)
(**
pancake_sort [1; 2; 3; 4; 5]
val it : int list = [5; 4; 3; 2; 1] *)

(**
pancake_sort [1; 2; 3; 4; 5; 6]
val it : int list = [6; 5; 4; 3; 2; 1] *)

(**
pancake_sort [1; 2; 3; 4; 5; 6; 7]
val it : int list = [7; 6; 5; 4; 3; 2; 1] *)

(**
pancake_sort [1; 2; 3; 4; 5; 6; 7; 8]
val it : int list = [8; 7; 6; 5; 4; 3; 2; 1] *)

(**
pancake_sort [1; 2; 3; 4; 5; 6; 7; 8; 9]
val it : int list = [9; 8; 7; 6; 5; 4; 3; 2; 1] *)

(**
pancake_sort [1; 2; 3; 4; 5; 6; 7; 8; 9; 10]
val it : int list = [10; 9; 8; 7; 6; 5; 4; 3; 2; 1] *)

(**
pancake_sort [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11]
val it : int list = [11; 10; 9; 8; 7; 6; 5; 4; 3; 2; 1] *)

(**
pancake_sort [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12]
val it : int list = [12; 11; 10; 9; 8; 7; 6; 5; 4; 3; 2; 1] *)

(**
pancake_sort [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13]
val it : int list = [13; 12; 11; 10; 9; 8; 7; 6; 5; 4; 3; 2; 1] *)

(**
pancake_sort [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14]
val it : int list = [14; 13; 12; 11; 10; 9; 8; 7; 6; 5; 4; 3; 2; 1] *)

(**
pancake_sort [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15]
val it : int list = [15; 14; 13; 12; 11; 10; 9; 8; 7; 6; 5; 4; 3; 2; 1] *)

(**
pancake_sort [1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16]
val it : int list = [16; 15; 14; 13; 12; 11; 10; 9; 8; 7; 6; 5; 4; 3; 2; 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
