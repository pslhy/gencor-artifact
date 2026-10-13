let rec lps (str : string) : int = 
  let len = String.length str in
  let dp = Array.make_matrix len len 0 in
  for gap = 0 to len - 1 do
    for i = 0 to len - gap - 1 do
      let j = i + gap in
      if i = j then
        dp.(i).(j) <- 1
      else if str.[i] = str.[j] then
        dp.(i).(j) <- dp.(i + 1).(j - 1) + 2
      else
        dp.(i).(j) <- max dp.(i + 1).(j) dp.(i).(j - 1)
    done
  done;
  dp.(0).(len - 1)

let () = 
  let str = "mangopanama" in
  Printf.printf "The length of the longest palindromic subsequence is %d\n" (lps str)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
