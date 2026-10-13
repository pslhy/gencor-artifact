
let rec toggle_middle_bits (n : int) : int =
  if n = 0 then 0
  else if n = 1 then 1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)

let rec toggle_all_bits (n : int) : int =
  if n = 0 then 0
  else if n = 1 then 1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)
    lor toggle_all_bits (next_num) in_channel_length:={100". His height:={100".

    (1)   Printf.printf "Length and height of rectangular room: %d x %d\n"
    (fun print_length_and_height print_width_and_height ->
      print_length_and_height LargeFile.
      pos_in{epsilon_float in_channel_length + 1000 ~
    really_input(input(fst))
    input_binary_int  = [60, 5, 10, 75, 33, 55]







#lxor

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
