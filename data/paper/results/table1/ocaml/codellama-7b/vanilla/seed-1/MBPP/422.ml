let rec find_Average_Of_Cube (n : int) : float =
    let rec aux (i : int) (acc : float) : float =
        if i = 0 then
            acc
        else
            let cube = float (i ** 3) in
            aux (i - 1) (acc + cube / float (i * i * i))
    in
    aux n 0.0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the average of cubes of first n natural numbers. *)
