(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list = 
  let is_divisible_by_digits n = 
    let digits = ref [] in
    let mutable m = n in
    while m > 0 do
      let rem = m mod 10 in
      if rem = 0 || n mod rem <> 0 then begin
        digits := rem :: !digits;
        break
      end;
      m <- m / 10
    done;
    List.for_all (fun x -> n mod x = 0) !digits
  in
  List.filter is_divisible_by_digits (List.init (endnum - startnum + 1) (fun i -> i + startnum))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list = 
  let is_divisible_by_digits n = 
    let rec extract_digits num =
      if num = 0 then []
      else (num mod 10) :: extract_digits (num / 10)
    in
    let digits = extract_digits n in
    List.for_all (fun x -> x <> 0 && n mod x = 0) digits
  in
  List.filter is_divisible_by_digits (List.init (endnum - startnum + 1) (fun i -> i + startnum))

