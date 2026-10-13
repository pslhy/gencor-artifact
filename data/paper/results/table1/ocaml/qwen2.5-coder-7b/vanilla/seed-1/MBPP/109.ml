let rec odd_Equivalent (s : string) (n : int) : int = 
  let rotate_string (str: string) (num: int) : string = 
    let len = String.length str in
    String.sub str (len - num) num ^ String.sub str 0 (len - num) in
  let rec count_odd (str: string) (count: int) (num: int) : int = 
    if num = 0 then count
    else
      let rotated = rotate_string str num in
      if int_of_char rotated.[0] mod 2 <> 0 then count_odd rotated (count + 1) (num - 1)
      else count_odd rotated count (num - 1) in
  count_odd s 0 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
