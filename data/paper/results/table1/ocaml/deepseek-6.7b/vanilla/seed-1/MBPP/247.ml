let rec lps (str : string) : int =
  let length = String.length str in
  let dp = Array.make_matrix length length 0 in
  for i = 0 to length - 1 do
    dp.(i).(i) <- 1
  done;
  for cl = 2 to length do
    for i = 0 to length - cl do
      let j = i + cl - 1 in
      if str.[i] = str.[j] then dp.(i).(j) <- dp.(i + 1).(j - 1) + 2
      else dp.(i).(j) <- max dp.(i).(j - 1) dp.(i + 1).(j)
    done
  done;
  dp.(0).(length - 1)

let () =
  assert (lps "bbbab" = 4);
  assert (lps "cbbd" = 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
