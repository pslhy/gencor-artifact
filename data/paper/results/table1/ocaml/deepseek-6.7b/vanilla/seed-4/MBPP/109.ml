let rec odd_Equivalent (s : string) (n : int) : int =
  let binary_len = String.length s in
  let rotate_once (s : string) =
    let first_char = String.sub s 0 1 in
    let rest_of_string = String.sub s 1 (binary_len - 1) in
    rest_of_string ^ first_char
  in
  let rec rotate_n_times (s : string) (n : int) : string =
    if n = 0 then s
    else rotate_n_times (rotate_once s) (n - 1)
  in
  let rotated_string = rotate_n_times s n in
  let rec count_odd (s : string) (count : int) : int =
    if String.length s = 0 then count
    else
      count_odd
        (String.sub s 1 (String.length s - 1))
        (if String.get s 0 = '1' then count + 1 else count)
  in
  count_odd rotated_string 0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
