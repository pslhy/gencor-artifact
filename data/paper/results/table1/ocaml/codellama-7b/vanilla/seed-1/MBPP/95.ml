let rec find_Min_Length (lst : int list list) : int =
match lst with
| [] -> 0
| hd :: tl ->
    let min_len = find_Min_Length tl in
    if List.length hd < min_len then List.length hd else min_len

let test_cases = [[1], [1, 2], [1, 2, 3], [1, 2, 3, 4], [1, 2, 3, 4, 5]];;

List.iter (fun lst -> Printf.printf "%d\n" (find_Min_Length lst)) test_cases;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the smallest list in a list of lists. *)
