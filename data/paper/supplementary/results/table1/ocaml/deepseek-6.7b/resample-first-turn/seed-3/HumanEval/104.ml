let rec unique_digits (x : int list) : int list =
  List.sort (fun a b -> a - b) (List.filter (fun x -> not (List.exists (fun y -> y mod 2 = 0) (String.to_list (string_of_int x)))) x)
  
let test1 = unique_digits [15; 33; 1422; 1]
let test2 = unique_digits [152; 323; 1422; 10]

(* This will print:
- : int list = [1; 15; 33]
- : int list = []
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of positive integers x. return a sorted list of all *)
(*     elements that hasn't any even digit. *)
(*     Note: Returned list should be sorted in increasing order. *)
(*     For example: *)
(*     >>> unique_digits [15; 33; 1422; 1] *)
(*     [1; 15; 33] *)
(*     >>> unique_digits [152; 323; 1422; 10] *)
(*     [] *)
