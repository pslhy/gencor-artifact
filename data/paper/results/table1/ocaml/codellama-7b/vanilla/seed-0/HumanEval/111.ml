let rec histogram (test : string) : (string * int) list =
  match test with
  | "" -> []
  | _ ->
    let rec aux (test : string) (acc : (string * int) list) :
      (string * int) list =
      match test with
      | "" -> acc
      | _ ->
        let current : int =
          if List.mem_assoc (String.get test 0) acc then
            List.assoc (String.get test 0) acc + 1
          else 1 in
        aux (String.sub test 1 (String.length test - 1)) ((String.get test 0,
         current) :: acc) in
    aux test []


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
