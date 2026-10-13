let rec circular_shift (x : int) (shift : int) : string =
  let digits = string_of_int x in
  let num_digits = String.length digits in
  let shift' = if shift > num_digits then num_digits else shift in
  let rec helper (digits : string) (shift : int) : string =
    if shift = 0 then digits else
    let first_digit = String.get digits 0 in
    let rest = String.sub digits 1 (String.length digits - 1) in
    let rest' = if shift = num_digits then String.sub rest 0 (String.length rest - 1) else rest in
    String.concat "" [String.make 1 first_digit; rest']
  in
  let digits' = helper digits' shift' in
  let reversed = String.init (String.length digits') (fun i -> String.get digits' (num_digits - i - 1)) in
  if shift = 0 then rest else String.concat "" [digits'; String.make 1 first_digit]

let test_cases : (int * int * string) list =
  [
    (12, 1, "21");
    (12, 2, "12");
    (16, 2, "61");
    (1234, 2, "3412");
  ]

let run_test (x, shift, expected) =
  let result = circular_shift x shift in
  if result = expected then () else
    Printf.printf "TEST FAILED: circular_shift %d %d => expected %s, got %s\n" x shift expected result

let _ =
  List.iter run_test test_cases


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Circular shift the digits of the integer x, shift the digits right by shift *)
(*     and return the result as a string. *)
(*     If shift > number of digits, return digits reversed. *)
(*     >>> circular_shift 12 1 *)
(*     "21" *)
(*     >>> circular_shift 12 2 *)
(*     "12" *)
