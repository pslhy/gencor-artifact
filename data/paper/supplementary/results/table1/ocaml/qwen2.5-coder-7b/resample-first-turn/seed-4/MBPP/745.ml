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


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
