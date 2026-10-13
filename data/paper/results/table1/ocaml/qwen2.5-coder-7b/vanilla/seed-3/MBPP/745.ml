let rec divisible_by_digits (startnum : int) (endnum : int) : int list = 
  let is_divisible_by_digits num =
    let digits = ref [] in
    let n = ref num in
    while !n > 0 do
      digits := !n mod 10 :: !digits;
      n := !n / 10
    done;
    let rec check_divisibility = function
      | [] -> true
      | d :: ds -> 
          if d != 0 && num mod d != 0 then false else check_divisibility ds
    in
    check_divisibility !digits
  in
  let rec find_divisible_numbers n acc =
    if n > endnum then acc
    else if is_divisible_by_digits n then find_divisible_numbers (n + 1) (n :: acc)
    else find_divisible_numbers (n + 1) acc
  in
  find_divisible_numbers startnum []

let () =
  let result = divisible_by_digits 1 100 in
  Printf.printf "%s\n" (String.concat ", " (List.map string_of_int result))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
