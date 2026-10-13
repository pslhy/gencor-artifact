let rec find_Rotations (str : string) : int =
  let str_len = String.length str in
  let double_str = String.concat "" [str; str] in
  let len_double_str = String.length double_str in
  let next_arr = Array.make len_double_str 0 in
  let i = ref 1 in
  let j = ref 0 in
  while !i < len_double_str do
    if double_str.[char_to_int (str.[1])] = double_str.[char_to_int (str.[0])] then
      next_arr.(!i) <- !j + 1
    else
      next_arr.(!i) <- max 0 (!j + str_len - (next_arr.(!j)));
    if double_str.[char_to_int (str.[1])] = double_str.[char_to_int (str.[0])] then
      incr i
    else
      j := next_arr.(!i);
    incr i
  done;
  str_len - next_arr.(len_double_str - 1)

and char_to_int x : int =
  Char.code x - Char.code '0'

and max x y : int =
  if x > y then x
  else y


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
