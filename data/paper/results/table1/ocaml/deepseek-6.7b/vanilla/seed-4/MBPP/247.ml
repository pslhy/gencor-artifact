let rec lps (str : string) : int =
  let len = String.length str in
  let mat = Array.make_matrix len len 0 in
  for i = 0 to len-1 do
    mat.(i).(i) <- 1
  done;
  for l = 2 to len do
    for i = 0 to len-l do
      let j = i + l - 1 in
      if str.[i] = str.[j] then
        mat.(i).(j) <- mat.(i+1).(j-1) + 2
      else
        mat.(i).(j) <- max mat.(i+1).(j) mat.(i).(j-1)
    done
  done;
  mat.(0).(len-1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
