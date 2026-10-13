let rec test_duplicate (arraynums : int list) : bool =
  if(arraynums.Length = 0) then false
  else begin
    let cur_num = arraynums(0)
    let rec helper (i: int) =
      if (i < (arraynums.Length - 1)) then
        if (arraynums.agg(i + 1) = cur_num) then true
        else helper(i + 1)
  end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find whether a given list of integers contains any duplicate element. *)
