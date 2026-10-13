let rec lps (str : string) : int =
  let len = String.length str in
  let dp = Array.make_matrix ~dimx:(len+1) ~dimy:(len+1) 0 in
  for i = 1 to len do
    for j = 0 to len - 1 do
      if i = 1 then
        dp.(i).(j) <- if str.[j] = str.[j+1] then 2 else 1
      else
        dp.(i).(j) <- max dp.(i-1).(j) dp.(i).(j-1);
        if str.[j] = str.[j+i-1] then
          dp.(i).(j) <- max dp.(i).(j) (dp.(i-2).(j-1) + 2)
    done
  done;
  dp.(len).(len)



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
