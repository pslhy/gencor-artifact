let rec unique_digits (x : int list) : int list =
  let rec helper (x : int list) (seen : int list) : int list =
    match x with
    | [] -> seen
    | hd :: tl ->
      if List.for_all (fun (e : int) -> e <> hd) seen then
        helper tl (hd :: seen)
      else
        helper tl seen
  in
  helper x []


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
