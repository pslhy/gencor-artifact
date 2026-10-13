
let rec sort_sublists (list1 : string list list) : string list list =
  match list1 with
  | [] -> []
  | h :: t -> 
      let (sorted_h, sorted_t) = sort_sublists h t in
      (sorted_h :: sorted_t)

let sort_sublists_test = [ [ "c"; "b"; "a" ]; [ "z"; "y"; "x" ] ] |> sort_sublists = [ [ "a"; "b"; "c" ]; [ "x"; "y"; "z" ] 

sort_sublists [] = []

sort_sublists([ ["c"; "b"; "a"] ]) = [["a"; "b"; "c"]]

sort_sublists([ ["c"; "b"; "a"]; ["z"; "y"; "x"] ]) = [["a"; "b"; "c"] ["x"; "y"; "z"]]

sort_sublists([ ["c"; "b"; "a"]; ["z"; "y"; "x"]; ["o"; "n"; "m"] ]) = [["a"; "b"; "c"] ["x"; "y"; "z"] ["m"; "n"; "o"]]

sort_sublists([ ["c"; "b"; "a"]; ["z"; "y"; "x"]; ["o"; "n"; "m"]; ["l"; "k"; "j"] ]) = [["a"; "b"; "c"] ["x"; "y"; "z"] ["m"; "n"; "o"] ["j"; "k"; "l"]]

sort_sublists([ ["c"; "b"; "a"]; ["z"; "y"; "x"]; ["o"; "n"; "m"]; ["l"; "k"; "j"]; ["g"; "f"; "e"] ]) = [["a"; "b"; "c"] ["x"; "y"; "z"] ["m"; "n"; "o"] ["j"; "k"; "l"] ["e"; "f"; "g"]]

sort_sublists([ ["c"; "b"; "a"]; ["z"; "y"; "x"]; ["o"; "n"; "m"]; ["l"; "k"; "j"]; ["g"; "f"; "e"]; ["s"; "d"; "c"] ]) = [["a"; "b"; "c"] ["x"; "y"; "z"] ["m"; "n"; "o"] ["j"; "k"; "l"] ["e"; "f"; "g"] ["c"; "d"; "s"]]

sort_sublists([ ["c"; "b"; "a"]; ["z"; "y"; "x"]; ["o"; "n"; "m"]; ["l"; "k"; "j"]; ["g"; "f"; "e"]; ["s"; "d"; "c"]; ["r"; "q"; "p"] ]) = [["a"; "b"; "c"] ["x"; "y"; "z"] ["m"; "n"; "o"] ["j"; "k"; "l"] ["e"; "f"; "g"] ["c"; "d"; "s"] ["p"; "q"; "r"]]

sort_sublists([ ["c"; "b"; "a"]; ["z"; "y"; "x"]; ["o"; "n"; "m"]; ["l"; "k"; "j"]; ["g"; "f"; "e"]; ["s"; "d"; "c"]; ["r"; "q"; "p"]; ["h"; "g"; "f"] ]) = [["a"; "b"; "c"] ["x"; "y"; "z"] ["m"; "n"; "o"] ["j"; "k"; "l"] ["e"; "f"; "g"] ["c"; "d"; "s"] ["p"; "q"; "r"] ["f"; "g"; "h"]]

sort_sublists([ ["c"; "b"; "a"]; ["z"; "y"; "x"]; ["o"; "n"; "m"]; ["l"; "k"; "j"]; ["g"; "f"; "e"]; ["s"; "d"; "c"]; ["r"; "q"; "p"]; ["h"; "g"; "f"]; ["a"; "b"; "c"] ]) = [["a"; "b"; "c"] ["x"; "y"; "z"] ["m"; "n"; "o"] ["j"; "k"; "l"] ["e"; "f"; "g"] ["c"; "d"; "s"] ["p"; "q"; "r"] ["f"; "g"; "h"] ["a"; "b"; "c"]]

sort_sublists([ ["c"; "b"; "a"]; ["z"; "y"; "x"]; ["o"; "n"; "m"]; ["l"; "k"; "j"]; ["g"; "f"; "e"]; ["s"; "d"; "c"]; ["r"; "q"; "p"]; ["h"; "g"; "f"]; ["a"; "b"; "c"]; ["z"; "y"; "x"] ]) = [["a"; "b"; "c"] ["x"; "y"; "z"] ["m"; "n"; "o"] ["j"; "k"; "l"] ["e"; "f"; "g"] ["c"; "d"; "s"] ["p"; "q"; "r"] ["f"; "g"; "h"] ["a"; "b"; "c"] ["x"; "y"; "z"]]

sort_sublists([ ["c"; "b"; "a"]; ["z"; "y"; "x"]; ["o"; "n"; "m"]; ["l"; "k"; "j"]; ["g"; "f"; "e"]; ["s"; "d"; "c"]; ["r"; "q"; "p"]; ["h"; "g"; "f"]; ["a"; "b"; "c"]; ["z"; "y"; "x"]; ["o"; "n"; "m"] ]) = [["a"; "b"; "c"] ["x"; "y"; "z"] ["m"; "n"; "o"] ["j"; "k"; "l"] ["e"; "f"; "g"] ["c"; "d"; "s"] ["p"; "q"; "r"] ["f"; "g"; "h"] ["a"; "b"; "c"] ["x"; "y"; "z"] ["m"; "n"; "o"]]

sort_sublists([ ["c"; "b"; "a"]; ["z"; "y"; "

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort each sublist of strings in a given list of lists. *)
