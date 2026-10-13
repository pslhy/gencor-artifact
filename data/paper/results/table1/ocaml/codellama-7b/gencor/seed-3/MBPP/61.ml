
let rec count_Substrings (s : string) : int =
  if String.length s <= 1 then
    0
  else
    let (head, tail) = (String.get s 0, String.sub s 1 (String.length s - 1)) in
    let sum =
      String.fold_left
        (fun acc digit -> acc + (int_of_char digit - 48))
        0
        (String.trim tail)
    in
    if sum = String.length s then
      1 + count_Substrings tail
    else
      count_Substrings tail

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
