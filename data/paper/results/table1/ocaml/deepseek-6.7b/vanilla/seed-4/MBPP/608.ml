let rec bell_Number (n : int) : int =
  let bell = Array.make_matrix (n+1) (n+1) 0 in
  bell.(0).(0) <- 1;
  for i = 1 to n do
    bell.(i).(0) <- bell.(i-1).(i-1);
    for j = 1 to i do
      bell.(i).(j) <- bell.(i-1).(j-1) + bell.(i).(j-1);
    done;
  done;
  bell.(n).(0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find nth bell number. *)
