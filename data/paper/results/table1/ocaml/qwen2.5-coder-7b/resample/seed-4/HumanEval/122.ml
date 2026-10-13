(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a non-empty list of integers arr and an integer k, return *)
(*     the sum of the elements with at most two digits from the first k elements of arr. *)
(*     Example: *)
(*     >>> add_elements [111; 21; 3; 4000; 5; 6; 7; 8; 9] 4 *)
(*     24 *)
(*     Constraints: *)
(*     1. 1 <= len(arr) <= 100 *)
(*     2. 1 <= k <= len(arr) *)
let rec add_elements (arr : int list) (k : int) : int = 
  let rec sum acc = function
    | [] -> acc
    | h::t -> 
        if h >= 100 then sum acc t else sum (acc + h) t
  in
  sum 0 (List.take arr k)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:10: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec add_elements (arr : int list) (k : int) : int = 
  let rec sum acc = function
    | [] -> acc
    | h::t -> 
        if h >= 100 then sum acc t else sum (acc + h) t
  in
  sum 0 (Array.to_list (Array.sub (Array.of_list arr) 0 k))

