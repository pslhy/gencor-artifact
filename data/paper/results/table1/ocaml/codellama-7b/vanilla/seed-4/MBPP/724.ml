let rec power_base_sum (base : int) (power : int) : int =
  if power = 0 then
    0
  else
    let digit_sum = ref 0 in
    for i = 0 to String.length (string_of_int base) - 1 do
      digit_sum := !digit_sum + (int_of_char (String.get (string_of_int base) i) - '0')
    done;
    !digit_sum + (int_of_char (String.get (string_of_int base) String.length base) - '0')


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power. *)
