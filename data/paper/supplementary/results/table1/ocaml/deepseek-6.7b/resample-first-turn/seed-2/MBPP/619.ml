let rec move_num (test_str : string) : string =
  let len = String.length test_str in
  let rec helper i counter out_str =
    if i < len then
      if Char.is_digit test_str.[i] then 
        helper i (counter + 1) out_str
      else
        helper (i + 1) counter (out_str ^ String.make 1 test_str.[i])
    else 
      if counter = 0 then out_str
      else out_str ^ String.make counter '0'
  in
  let str_no_num = helper 0 0 "" in
  let len_no_num = String.length str_no_num in
  let str_num = String.make len_no_num '0' in
  let rec helper2 i j =
    if i < len_no_num then
      if Char.is_digit test_str.[i] then 
        helper2 (i + 1) j
      else 
        helper2 (i + 1) (str_num.[j] <- test_str.[i]; j + 1)
    else str_no_num ^ str_num
  in
  helper2 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
