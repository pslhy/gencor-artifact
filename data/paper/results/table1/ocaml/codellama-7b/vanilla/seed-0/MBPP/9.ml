let rec find_Rotations (str : string) : int =
  if str = "" then 0 else begin
    let n = String.length str in
    let rotations = Array.make n 0 in

    for i = 0 to n - 1 do
      let str' = String.sub str i (n - i) ^ String.sub str 0 i in
      if str' = str then rotations.(i) <- i;
    done;

    rotations.(n - 1)
  end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
