let rec sequence (n : int) : int =
   if n <= 1 then
      n
   else
      let (a, b) = sequence (n - 1) in
      (1, a + b)

let nth (n : int) : int =
   if n <= 1 then
      1
   else
      sequence n |> List.nth 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth number in the newman conway sequence. *)
