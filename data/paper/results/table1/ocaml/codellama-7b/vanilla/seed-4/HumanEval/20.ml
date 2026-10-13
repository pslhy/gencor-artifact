let rec find_closest_elements (numbers : float list) :  float * float = 
    (* helper function that compares two numbers and returns the 
    smaller and larger one *)
    let compare x y : float * float =
        
         if x < y then (x, y) else (y, x)

    (* base case, where the list has only one element *)
    if List.length numbers = 1 then 
        (numbers.[0], numbers.[0])
    else 
        let smaller, larger = compare (List.hd numbers) (List.hd (List.tl numbers)) in

	(* find the pair of numbers that have the smallest absolute
        difference *)
	let rec aux (acc : float * float) (acc_diff : float) (remaining : float list) :  float * float =
	    match remaining with
	    | [] -> acc
	    | h :: t ->
		let diff = abs (h - acc_diff) in
		let next = compare h acc_diff in
		let res = compare diff acc_diff in

	    (* update the current closest pair and the set of remaining
        elements, and continue searching for the closest pair *)
			if res = 0 then aux (next, h) diff t else aux acc acc_diff t  	in

	(* find the closest pair of numbers and return them *)
	aux (smaller, larger) smaller (List.tl numbers)
    in

(* driver function that calls the main implementation function *)
let find_closest_elements (numbers : float list) :  float * float =
	let n = List.sort compare numbers in
	aux (n.[0], n.[1]) (n.[1] - n.[0]) (List.tl (List.tl n))

(* test cases *)

let base_case = find_closest_elements [1.0]
let expected_closest_pair = (1.0, 1.0) in
base case; expected_closest_pair =! expected_closest_pair;

let test_case = [1.0; 2.0; 3.0; 4.0; 5.0; 2.0] in
let expected_closest_pair = (2.0, 2.0) in
let result = find_closest_elements test_case in
result =! expected_closest_pair;

let test_case = [1.0; 2.0; 3.0; 4.0; 5.0; 2.2] in
let expected_closest_pair = (2.0, 2.2) in
let result = find_closest_elements test_case in
result =! expected_closest_pair; *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a supplied list of numbers (of length at least two) select and return two that are the closest to each *)
(*     other and return them in order (smaller number, larger number). *)
(*     >>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.2] *)
(*     (2.0, 2.2) *)
(*     >>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.0] *)
(*     (2.0, 2.0) *)
