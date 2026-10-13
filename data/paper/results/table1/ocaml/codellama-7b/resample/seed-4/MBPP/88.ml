(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
let rec freq_count (list1 : int list) : (int * int) list = 
    match list1 with 
      head :: tail ->  (head, List.length(List.filter (fun x -> x = head) list1)) :: freq_count tail 
      [] -> []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:10: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec freq_count (list1 : int list) : (int * int) list =
  match list1 with
    head::tail -> (head, List.length(List.filter (fun x -> x = head) list1))::freq_count tail
    [] -> []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:8: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec freq_count (list1 : int list) : (int * int) list =
  match list1 with
    | head::tail -> (head, List.length(List.filter (fun x -> x = head) list1))::freq_count tail
    | [] -> []

