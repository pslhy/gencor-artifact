
let rec next_smallest_palindrome (num : int) : int =
  if num < 10 then num
  else
    let str = string_of_int (num) in
    let len = String.length str in
    if len = 1 then num + 1
    else
      let front = String.sub str 0 (len / 2) in
      let back = String.sub str (len / 2) (len - (len / 2)) in
      if front = back then num + 1
      else if len mod 2 = 0 && front <> back then
        let pad_len = len - 1 in
        let pad_str = String.make pad_len '0' in
        let new_str = String.make pad_len '9' in
        let result = int_of_string (pad_str ^ new_str) in
        result + 1
      else
        let pad_len = len in
        let pad_str = String.make pad_len '0' in
        let new_str = String.make pad_len '9' in
        let result = int_of_string (pad_str ^ new_str) in
        result + 1 in
      next_smallest_palindrome (if next_smallest_palindrome = 0 then 1 else next_smallest_palindrome)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the next smallest palindrome of a specified integer, returned as an integer. *)
