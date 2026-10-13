let rec find_length (string : string) : int = 
  let rec helper (chars : char list) (count0 : int) (count1 : int) (max_diff : int) : int = 
    match chars with
    | [] -> max_diff
    | '0' :: rest -> helper rest (count0 + 1) count1 (if count0 - count1 > max_diff then count0 - count1 else max_diff)
    | '1' :: rest -> helper rest count0 (count1 + 1) (if count0 - count1 > max_diff then count0 - count1 else max_diff)
  in helper (List.of_seq (String.to_seq string)) 0 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
