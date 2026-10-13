let rec histogram (test : string) : (string * int) list = 
  let rec count_chars acc str =
    match str with 
      "" -> acc
    | x::xs ->
        let new_acc =
          if List.mem_assoc x acc then
            let count = List.assoc x acc in
           List.replace_assoc x (count + 1) acc
          else
            (x, 1) :: acc
        in
        count_chars new_acc xs
  in
  let rec find_max acc max_count chars =
    match chars with
      [] -> acc, max_count
    | (x, count)::xs ->
        if count > max_count then
            find_max [(x, count)] count xs
        else if count = max_count then
            find_max ((x, count) :: acc) max_count xs
        else
            find_max acc max_count xs
  in
  let chars = test |> String.split_on_char ' ' in
  let counted_chars = count_chars [] chars in
  let max_counted_chars = find_max [] 0 counted_chars in
  max_counted_chars


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
