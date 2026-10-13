let rec longest (strings : string list) : string option =
  match strings with
  | [] -> Some None
  | h :: t ->
    let len = String.length h in
    let rec find_longest h max = function
      | [] -> max
      | x :: xs when String.length x > len -> find_longest h (Some x) xs
      | x :: xs -> find_longest h max xs
    in
    find_longest h (Some h) t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Out of list of strings, return the longest one. Return the first one in case of multiple *)
(*     strings of the same length. Return None in case the input list is empty. *)
(*     >>> longest [] *)
(*     Some(None) *)
(*     >>> longest ["a"; "b"; "c"] *)
(*     Some("a") *)
(*     >>> longest ["a"; "bb"; "ccc"] *)
(*     Some("ccc") *)
