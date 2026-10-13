let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
  let open String in
  let plen = length pattern in
  if (text = "") || (plen > length text) then ("", 0, None)
  else
    let first_match = index text pattern 0 in
    if first_match = -1 then ("", 0, None)
    else
      let rest_of_text = sub text (first_match + plen) (length text - first_match - plen) in
      let (n, pos) = occurance_substring rest_of_text pattern in
      (n, 1 + pos, Some first_match)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
