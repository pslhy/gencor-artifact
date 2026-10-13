let rec odd_Equivalent (s : string) (n : int) : int =
  let len = String.length s in
  let rec rotate str =
    let str' = String.sub str 1 (len - 1) ^ String.make 1 str.[0] in
    str'
  in
  let rec count_odd s =
    let rec convert_to_dec str i cnt =
      if i < 0 then cnt
      else convert_to_dec str (i - 1) (cnt + (int_of_char str.[i] - 48) * (1 lsl i))
    in
    let decimal = convert_to_dec s (String.length s - 1) 0 in
    if decimal land 1 = 1 then 1 else 0
  in
  let rec helper s n cnt =
    if n <= 0 then cnt
    else helper (rotate s) (n - 1) (cnt + count_odd s)
  in
  helper s n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
