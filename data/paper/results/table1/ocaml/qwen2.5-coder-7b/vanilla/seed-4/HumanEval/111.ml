let rec histogram (test : string) : (string * int) list = 
  let rec countOccurrences acc words =
    match words with
    | [] -> acc
    | w :: ws -> 
        if List.mem_assoc w acc then
          countOccurrences (List.map (fun (k, v) -> if k = w then (k, v + 1) else (k, v)) acc) ws
        else
          countOccurrences ((w, 1) :: acc) ws
  in
  let occurrences = countOccurrences [] (String.split_on_char ' ' test) in
  let max_count = List.fold_left (fun a (k, v) -> max a v) 0 occurrences in
  List.filter (fun (_, v) -> v = max_count) occurrences


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
