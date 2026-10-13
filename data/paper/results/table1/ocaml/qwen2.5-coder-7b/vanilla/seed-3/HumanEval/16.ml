let rec count_distinct_characters (string : string) : int = 
  let rec helper (chars : char list) (seen : char set) : int = 
    match chars with 
    | [] -> Set.cardinal seen
    | c::cs -> 
        let lower_c = Char.lowercase_ascii c in
        if Set.mem lower_c seen then
          helper cs seen
        else
          helper cs (Set.add lower_c seen)
  in
  helper (String.to_list string) (Set.empty)

(* Test cases *)
let _ = assert (count_distinct_characters "xyzXYZ" = 3)
let _ = assert (count_distinct_characters "Jerry" = 4)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string, find out how many distinct characters (regardless of case) does it consist of *)
(*     >>> count_distinct_characters "xyzXYZ" *)
(*     3 *)
(*     >>> count_distinct_characters "Jerry" *)
(*     4 *)
