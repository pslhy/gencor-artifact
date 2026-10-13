let rec histogram (test : string) : (string * int) list =
  if test = ""
  then []
  else
    let letter = String.get test 0 in
    let sub_test = String.sub test 1 (String.length test - 1) in
    let (letter', count) = histogram sub_test in
    match letter', count with
    | (a, b), _
      when a = letter
           && (match count with | 0 -> true | _ -> false) -> (letter, b + 1)
    | (a, b), (c, d) when a = letter -> (letter, b + 1)
    | (a, b), _ -> (letter, 1) :: (a, b + 1) @ letter'

let _ = histogram


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string representing a space separated lowercase letters, return an association list *)
(*     of the letter with the most repetition and containing the corresponding count. *)
(*     If several letters have the same occurrence, return all of them. *)
(*     Example: *)
(*     >>> histogram "a b c" *)
(*     [("a", 1); ("b", 1); ("c", 1)] *)
(*     >>> histogram "a b b a" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "a b c a b" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "b b b b a" *)
(*     [("b", 4)] *)
(*     >>> histogram "" *)
(*     [] *)
