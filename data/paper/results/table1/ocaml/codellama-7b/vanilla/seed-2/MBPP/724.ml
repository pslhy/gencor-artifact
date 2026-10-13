let rec power_base_sum (base : int) (power : int) : int =
  let sum = ref 0 in
  for i = 0 to power do
    sum := !sum + base;
  done;
  !sum

let main () =
  let base = 10 in
  let power = 3 in
  let result = power_base_sum base power in
  Printf.printf "Sum of all digits of %d to the power of %d is %d\n" base power result;

main ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power. *)
