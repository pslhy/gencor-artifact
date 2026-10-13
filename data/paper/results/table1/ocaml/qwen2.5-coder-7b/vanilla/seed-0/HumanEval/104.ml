let rec unique_digits (x : int list) : int list = 
  let is_unique n =
    let rec has_even_digit n =
      if n = 0 then false
      else match n mod 10 with
          | 0 | 2 | 4 | 6 | 8 -> true
          | _ -> has_even_digit (n / 10)
    in not (has_even_digit n)
  in
  let filtered = List.filter is_unique x in
  List.sort compare filtered
;;

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
