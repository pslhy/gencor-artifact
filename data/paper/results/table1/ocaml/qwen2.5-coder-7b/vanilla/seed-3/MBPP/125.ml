let rec find_length (string : string) : int = 
  let rec helper (string : string) (count_zero : int) (count_one : int) (max_diff : int) : int =
    match string with
    | "" -> max_diff
    | '0' :: rest -> helper rest (count_zero + 1) count_one (max max_diff (count_zero - count_one))
    | '1' :: rest -> helper rest count_zero (count_one + 1) (max max_diff (count_zero - count_one))
    | _ :: rest -> failwith "Invalid character in input string"
  in helper string 0 0 0

let max_diff_of_zeros_and_ones (s : string) : int =
  let rec helper (s : string) (index : int) (max_diff : int) (current_diff : int) : int =
    if index = String.length s then max_diff
    else
      let current_char = s.[index] in
      let new_diff =
        if current_char = '0' then current_diff - 1
        else current_diff + 1
      in
      helper s (index + 1) (max max_diff new_diff) new_diff
  in helper s 0 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
