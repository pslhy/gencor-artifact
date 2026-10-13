let rec lps (str : string) : int =
  let len = String.length str in
  let t = Array.make_matrix len len 0 in
  for i = 0 to len - 1 do
    t.(i).(i) <- 1
  done;
  for cl = 2 to len do
    for i = 0 to len - cl do
      let j = i + cl - 1 in
      if str.[i] = str.[j] then
        t.(i).(j) <- t.(i + 1).(j - 1) + 2
      else
        t.(i).(j) <- max (t.(i).(j - 1)) (t.(i + 1).(j))
    done;
  done;
  t.(0).(len - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
