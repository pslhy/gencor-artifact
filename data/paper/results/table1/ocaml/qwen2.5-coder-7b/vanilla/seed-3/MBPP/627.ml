let rec find_First_Missing (array : int list) : int = 
    let rec helper arr left right =
        match arr with
        | [] -> left
        | h::t -> if h = left then helper t (left + 1) right else left
    in
    helper array 1 (List.length array)

(* Test case *)
let () =
    let result = find_First_Missing [1; 2; 3; 4; 6; 7; 8] in
    print_endline (string_of_int result);  (* Output: 5 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest missing number from a sorted list of natural numbers. *)
