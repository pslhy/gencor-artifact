let rec next_power_of_2 (n : int) : int =
  if n <= 0 then
    1
  else
    let rec loop (n : int) (p : int) : int =
      if n <= p then
        p
      else
        loop n (p lsl 1)
    in
    loop n 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest power of 2 greater than or equal to n. *)
