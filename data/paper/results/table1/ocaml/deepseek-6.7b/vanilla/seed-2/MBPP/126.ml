let rec sum (a : int) (b : int) : int =
  let rec common_divisors a b =
    let divs = ref [] in
    for i = 1 to a do
      if a mod i = 0 then divs := i :: !divs
    done;
    List.filter (fun x -> b mod x = 0) !divs
  in
  List.fold_left ( + ) 0 (common_divisors a b)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
